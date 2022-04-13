Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028A823BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 04:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649823538;
	h=To:Subject:From:Message-Id:Date;
	bh=XUJyYFuxOM19/eKJbgYBJ8asyM1Go634b6+xxtfswKI=;
	b=eIvDVCckLSM0jznokTl/6LDHFcNbmlDIEj3QxIKnS4IU4ei1DHUtze107EYTXPGV
	jykC/eoZqkZ8UWyUtmTJpDa4CWQqHgZo2FYcPJuDci3R/z8b1epmavrCXZ03Hrg7RiL
	0dYpimI/H+kdYrLn+gXfRG+i/b4vAoAM//0B5Lkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649823538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XUJyYFuxOM19/eKJbgYBJ8asyM1Go634b6+xxtfswKI=;
	b=JXx6nm6+e6PfxOhXBfdjbPhyHOS9SMwmoopERpCiPF9XvmqjPtzNp30YVttw42GU
	LqEy7ZKz0W4v2lIhlCn2bDI3W20ueR5yFMxl0D7CUuaZI/xU6iS8Beihmv2nkWFrJZ3
	XuYRmN3WdJGvhMVu33k1smR4NNZcbYjtcK37i/A8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021255c52-9929b28e-f8a7-49b1-8a91-24ba0fbd7cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da58e20f6a87f914e2cd62dc512c2a25f5c7bae82a757306be1237ac9aded9a6
Date: Wed, 13 Apr 2022 04:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649823538
