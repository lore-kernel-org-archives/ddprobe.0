Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CD030BB8D
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756463993; cv=none; b=iDbwoGShzL7f5E/qYQAIEAdkEii1jxQShpG1hrKkBoYVNqxYylwFflEnK254GNEO3DZmSgUj5V+58Ff1BISIBOelIoOLqj9qyYWlQkcRoYZKMSfA8ldpC3G8QPX0b6iCLnMoS8KM7GK9yuy8rkAUzFRrC6oosD+JFJ70Wh3NYBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756463993; c=relaxed/simple;
	bh=M6EpiXXIZrPcXq8a03u9bf7MrE9VbY5ZqS8hzshqIVk=;
	h=To:Subject:From:Message-Id:Date; b=qcuB4zYrS4cxAn/bN3SeIYey4/9V9NsCQfu28ZZu4jjoq9KaMDyT0NbkCOoE0PtDWe0eT7ERYNc8oWsVFdr1CXaC0IreoKVV/fbJBHMD1KRABIRE9fnHqI19jXnarUHmTQTDhxEi8BWuTDVqC+Q0I94HtJV+iwXgNEMNEvA/NFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5zChD/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5zChD/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756463993;
	bh=M6EpiXXIZrPcXq8a03u9bf7MrE9VbY5ZqS8hzshqIVk=;
	h=To:Subject:From:Date:From;
	b=M5zChD/5sBqtUkR3xGk/oupjI5/MjB4JokE2AFo9SbRehZcrU7U1bB7EVZqrMabiM
	 LuJYUnC1KNVRhSQP1kiWLpE1YgQKOslXvZU6oZ+Ih9wrRghEWFhVUX3eMBG5q+JoKM
	 nmWhXLoIi2M0OBY/fo2iotwHpVICTAdXZPOIA1xN/sG9z1UCmllf8Xqh+Gw+4OOvXd
	 pXqvT/R2d6Jxfjdpe0olEYpv4suEYY/ZcNtCROw+Q4M2bbOjhZw1reFny0hF/2j2pN
	 zLk4H8lkIiazqyJt0roi3w6Cr/YgWBN2pxnXDN/esPsb9ofwT9sm5n3KJ1kAILEBx9
	 TdXOCzzsaISOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133ECA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646399357.11951.5829569922727510293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4b8aef452f69f8ea49ced609057f5050db557b69b4da355de04f51fd891083
Date: Fri, 29 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756463993
