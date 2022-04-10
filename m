Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC46EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 05:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649567518;
	h=To:Subject:From:Message-Id:Date;
	bh=qqjbvIbAiqwcA+bogvBLraHHEj/HIm/uE2id5FPTTNQ=;
	b=Eze2Kf4KIk0UceBwKoFk3kKMw7R4Jco/x8dPe+d7UwSirGcUoxUumjrC1+/UVvSO
	U7v3ZLrapKy5jNI1MTkY9kpF6l8gGf8xQIxiV746kdcO4jlx1e0hWXC2ULGw2H+3lrj
	R73Vmr8jTZBMh794bSyN4TXQZijEVbZF2MiMXIKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649567518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qqjbvIbAiqwcA+bogvBLraHHEj/HIm/uE2id5FPTTNQ=;
	b=T/6dNlnTBfJR2G/dBvZDqmZtoNE5KG8L5hm4q/nUDgPQkoO1j+MaNiDPI5xWLiAz
	lKULmAoCLI9gCFM1Tpwh4VPntDoQQviehM8CoKYEvVPwJjzxu9e6RMRAdsoGLZN3ul9
	VX33HTXQbBFWCrrNqEReIINXaVfyMV6YbsYxROsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011e2ce0a-c77e9646-7cd9-4bb0-b730-591e2c0f0bff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59e9c500e97fc625b0ceb18d4b3922616d365b0a018061ae1a77fe7f4ebe4824
Date: Sun, 10 Apr 2022 05:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649567518
