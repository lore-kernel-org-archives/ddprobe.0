Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 909472F2E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646008285;
	h=To:Subject:From:Message-Id:Date;
	bh=w3M8lvOBoQauL6CnIXqNprHUpYy4iSdIDPIa0dMEO10=;
	b=em2Syy1Y4LxGIK/HeiOz2v1RhGQsSrCeTs0dx3CWfa1FgqbxIpji3DVbFvWNrYkb
	fr3dNfMOw05sKb/4vTdFByewyaHYDph+hjZ8CeOh0B1/gA/osbtVu8OvluCzJXv90CA
	nzocm2KrZ2JVdK9d5wOwHvWRtQ+Fz/Jwr5JBgsjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646008285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w3M8lvOBoQauL6CnIXqNprHUpYy4iSdIDPIa0dMEO10=;
	b=ErEIRGvSkXHCJnwSuUYeNveV2vRZwelXV45aDKmFn7hUfM71CmyA2a9h6Lv3t07u
	qazuOS1EVtASVAKUH1WrnqEVUos6XfYdY8QkGm45ATp9Ne2O3PeVb7qVpH/TFAs6fVI
	VeOJH2Gz4eHrSvZ1ZAqVZagPinjkEUIeRVLGX+Fc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3dbd3680-786af63a-20ca-492a-9a89-3c3becfcf944-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7552fb0dad24c3c231d984dbd8e45faa38271e3d82dcb7cc5b505db2032037f0
Date: Mon, 28 Feb 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646008284
