Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC471D7E26
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755486594; cv=none; b=VnOygcytXkGwE9zy+tYC84pLK5vAisCQQMwSu4dWqJTGm+Y6urCZ5/sKzQ+huLP0M9OIvKWiL/mcJMiBKkRUVXoPcroAno6fcnqZGPihIuT/VAU/GNJenGc3tXXNBtNpQlIc9GJgxLWXq9uJvrm4x/ZU2axhubCYCtq9atSO+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755486594; c=relaxed/simple;
	bh=QPhvjsR0NLKcazqOo7VN3zZsK07lV42c/gojO9osqaQ=;
	h=To:Subject:From:Message-Id:Date; b=AdP9GljVb3bJhdTYy+0jJkDo3N8jAqvOkSRSiXa12ZP6jsmiUourOvSFt4uGFZkvWvGE1QNW9Fu4El6dgRSQoS5+OItSKj3lSu1oXZvgnh95ULZzZT1K+sVAeqLDK/PqM1OIAbOJAVYk+OOU21MDr+dcM/aeQPFbPYPqKHBY2SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFjM8Vri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFjM8Vri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46E5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755486593;
	bh=QPhvjsR0NLKcazqOo7VN3zZsK07lV42c/gojO9osqaQ=;
	h=To:Subject:From:Date:From;
	b=mFjM8VriSODKjcC1Y1i8ksm9oLm9/SxU9dHRN4Rczk6JKw5JhTkasf//bheoU5Ru9
	 wqgxzVRQYKU6pS67e/saCuWNdlP59ytt34GIDKmHVoxpOD569slPofPpEg1Bdmrl3b
	 hkoYMa/zY9iwojaC9HCa1Lv5lmZB7Ye3jq+7ybZd7jmpyTw/3hnkYPoFK9gmZ9YOAW
	 gmVnSWNBWphfWweMnpVoyxGmGxNcL8nRwF9K+KcLQTgyD6qucy22cZ8RAmPr0SQp7d
	 xuLwd/o8xuwEd9Dx5eOI7Mpr5RUDOhfSlCwDRS8pIpI0nyPdLlvnvhAseWexz7u06c
	 QRjFGpk9/WwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91829CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548659357.29504.11110353850544379337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5274e8340e1b3c92c5de2bfd5469ebe023d2d1651d363babe4861160a217dea7
Date: Mon, 18 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755486593
