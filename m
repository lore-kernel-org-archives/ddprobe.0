Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A175CC2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645366284;
	h=To:Subject:From:Message-Id:Date;
	bh=TGmDNgzbVOzYTPAYm1ot8iurmmHeXG3t59AZisSujZk=;
	b=U9VTRKWuIxophZp5sDoZ3WB3bjhgyusnJHtT22QMXlCEHzPzyo+n0DX+5ng6hkMw
	1Pczqy2kz6GU0xSU34SZ9JQN2+B01cB0970NQA2Uo2YfX8T/c/tj+WAv6kEPF9J9M+q
	2DThAJc6qovzyHVNjZOvnwpSVxr3aP6fAtVYZZNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645366284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TGmDNgzbVOzYTPAYm1ot8iurmmHeXG3t59AZisSujZk=;
	b=iR7aF3lGR1xpAGVFEbhcta1ftjOBb7G7+FupmOBLr/qiEuxDuZrFzjOAc57hMK15
	q2Zpz2RkMY1qjd65oiBnvEHrz8CuKqfdMXRAINo7RXDCGPwBvLEvbMRJq3Bm6u24EkS
	1tMEco0UFSgfnuQuQeUUSNq83IVc82nj0q02wCes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f177911ef-9e2db790-d615-41f0-920b-9697930bfc93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 556f6a5f0a066b3d18c6f0b7a09be745a56b550427af089ddaa3e27c507c70d1
Date: Sun, 20 Feb 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645366284
