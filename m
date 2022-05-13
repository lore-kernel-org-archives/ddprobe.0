Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3663D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652455259;
	h=To:Subject:From:Message-Id:Date;
	bh=KvLTJ7jMk9dYZFLQYCXIpFt7iiE9JoG+rGwXiUelsiM=;
	b=LhyyKsRGnG9+D+NNChmcUkPYprtdZXPM9FpmTMU8wO+ROQWohV3Mvs+OoNQ7vs20
	dkDe2pFVWnRUeX74zvO7hs6Mu0YdFPEbdrDYmZoYFlXD0ncJMqS+eXvec2o369vXDr5
	mFTDx6fuybatdrAumH+kZqMCh/g/hsQlWcue5/w4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652455259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KvLTJ7jMk9dYZFLQYCXIpFt7iiE9JoG+rGwXiUelsiM=;
	b=j4etyVtBQUeBW5v9kFUx/Wjy5OYlDTLVBEN1+aZRhy3XWtB2vYe4uGs18L0T1hjD
	WmrCf9ghe2eDhSlTg1rzs36abMqiBKCbCLpnd3Om+QBw9agfUpGp8pM0ZFTTXkwayvt
	DOm+uxNZj1Z+efYnEN6dnLKOUPYb/RGnPeXPofM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be023c83-ea976423-bcc2-4d8c-9c4d-0fdf7236473b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 530339ce9754de7a5fe2d2a71ef18379bdf34fd7c498f91bc58cdac58f97860f
Date: Fri, 13 May 2022 15:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652455259
