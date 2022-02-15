Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85395A3D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644942685;
	h=To:Subject:From:Message-Id:Date;
	bh=yYMFCncnA06RdIAmVlKVCqTghPlSq2h7CLxF2HKP1eo=;
	b=B5jHtIDg8M2MnoMvhHP/YlzhuW3pRH+ZghZHslLTSjtxqMPU8twWmQy+SCWE/MG4
	a/NbxUJ2I3q/jhe5X9Rul5aUdNx2lTn1CAqbrVW0zaNvgZZkvLGLDhK1G8EIEHrScfy
	Yv3ge2CRnERC8/zGRRAPF0NTMtnXbwvNK/6d3gbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644942685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yYMFCncnA06RdIAmVlKVCqTghPlSq2h7CLxF2HKP1eo=;
	b=NxXlUmq3gNPnUfWFZ5vRpA65Qf/yOBdHJm3B9/w8xuc93Vp6rg+kX7W4XfxfE9GB
	vOZVrM5C61GvgGesTGE5osDB/RymATT/sChljji2najSkWV7nl1yO+lnWMfh4CsF9MY
	uFx97IeGkgeuRImPdCKL5tZfZyQK7hA96JseoGKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe397290-e90f4a69-8be7-431e-8f36-1f6273efc10e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00151c59c84e8bae024966138b1d917ef20ad46988e4091738f81d76c3d85d5a
Date: Tue, 15 Feb 2022 16:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644942684
