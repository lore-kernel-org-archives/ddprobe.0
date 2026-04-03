Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE363CBE6B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775238934; cv=none; b=p139ZZFnWtlnGizckTtqZ2Y/PjCqkHe8QX3GmJtzrdwP6qzLlMEws6n+AJcyCfkGY5gF+QIo3biI1tksbAaR4/VliS3EPqS+9wAhHlhXCc+lplT21hEMd51StCTyjI7EOd2w1me/8DGK2WLSFdJjZLTuKc3VqgJbQ0HkNnVPtKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775238934; c=relaxed/simple;
	bh=no2O5ZuwQIvy39FD5KLiPlaeNwIcgL/sRVrdyjuEhAs=;
	h=To:Subject:From:Message-Id:Date; b=OB7X3aFYzF3DGWMJUCQxBeUgW9P1L5J1FVn8xDvh6u5gce3qGpKiyAC8PcsqBkZrYVDj+oR8S1qfU2vhugq7rEdZq+M9zEAw51lEZQhS2QzHAZb43USf3xjVNJWHmvAV0RiBGW7OiWXYn1647haMVs2AJJAjiywW/j9QtqOe8+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeIi6Bzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeIi6Bzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D1AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775238933;
	bh=no2O5ZuwQIvy39FD5KLiPlaeNwIcgL/sRVrdyjuEhAs=;
	h=To:Subject:From:Date:From;
	b=TeIi6BzcRMdp0KMK0b4I7aml5F0EVzChFthXzEUvo0AV52Dun+JsZHmwsjdkgX2Nw
	 IN4TEyYCFC1DAQYGjisTp6iZcCWypfDxYK80aA4xYYpyQv8R0vm+JJZiZdOc2VqfX0
	 +QSjnYPWebAPbY1My1zojupyTRpkCWxnJ5MFNHi8gsGyLfv1T3bKvDvBF9TkmyLvPU
	 DKzLUvn6g5fXwLOlmSBGa+V6SqwVAPayAzSjvR5mvcw8gzt8bS2CS0NU/J1ElWnQsw
	 b92edvydDqPQlXr3iVqpdxxrgQ48N96vWBzUHJqNY5MpE430z1H2C1urKWL16lRK2z
	 nyLwDY02x/7nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F7E8538B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523893368.27453.15421633681542884763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6c409b04c4d4eb550b48ce7bc0623eb373427160072b909621c632d9cc4e65
Date: Fri, 03 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775238933
