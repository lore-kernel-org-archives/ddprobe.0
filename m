Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4008829AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647774084;
	h=To:Subject:From:Message-Id:Date;
	bh=fhP2YrBRBQzTWPkimL+BNu5v0O/jv+Y2YPCUpzaeC9w=;
	b=OySN2fkRnFEFhckcO6GGrG1Ksjiw1ZrsyvjpjzCKpOxkfFH5DP2qQ5pvcHniejTM
	Ms8REzSqyXuoWGdnGCNOTCOJN8Ijk96sfvimqkzUIOHxeCHNSHm4IRwcjR3hz8inA3E
	irWGHVRwhd1o4bmr3ajQX4DtdFE5D4a/xPXLNKSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647774084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fhP2YrBRBQzTWPkimL+BNu5v0O/jv+Y2YPCUpzaeC9w=;
	b=RdSOPtAva0JP1EjcS8VqHSITebWGaewUnQ/qp3FYhEC/eiWeVp8AREtLg9xXanFt
	EwYAf83i3Nej5k/en3i2UC2LFQUMsHM0eUfaD7jOYa+MQ262rHc7KeMOc7ARNk01Ic1
	6bvfE3+omsxcPP/WKtS6i/sM5dtNOXJVBt9MW1n0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6fd2e78-d1def1ed-62cd-4113-b548-7f6ddf7b4932-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee403b74327a4d2e280b604726647017f81a90abedcce6b7519f834a95139df
Date: Sun, 20 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647774084
