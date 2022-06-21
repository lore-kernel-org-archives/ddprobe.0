Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D215A32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 06:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655792639;
	h=To:Subject:From:Message-Id:Date;
	bh=MIbzz/6f6bBePRQwH5n5LL0za3Vv/bd14K0nE5D+Rmw=;
	b=WFmA2PUHRkNO9N45Yt7CfbcpA7w/ve4rXFbr0QUDSdCRoSGJejP2B7134t7aCALn
	B9xv1RBNUKA8y6YQEchZHhjsJxgw5KeuDBJ+RQvxbYHnod8IM2P6qd+YbLA5ShQ1Uf5
	inEFswaj48pF1vtVHbPEqcUd2+D9PsxyB5ndsMGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655792639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MIbzz/6f6bBePRQwH5n5LL0za3Vv/bd14K0nE5D+Rmw=;
	b=Y1sR+saJYSMfR66ZPnpFN/RLJ34l7qTLjsGZPXQbTTlEFn3BthWLHW9oA58T2sVC
	cmQUqPs7pAMuNkPduL5hE3sGkIAL9fQ7vSVW4+eustCszKo1VsGCuzhf5T1EVME/qHO
	yMlpniPBGgLLvpfmjPpQIrh6qwrgd3j+DV8perXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184ee9d4d-5869e483-c014-41c6-a904-8f398430f6be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588a1d551fe05e1fea6fa24bc7016ee2130d2d6ee1503f96cb36b72e96718b8d
Date: Tue, 21 Jun 2022 06:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655792639
