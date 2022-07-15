Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1BE46A8
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657907812;
	h=To:Subject:From:Message-Id:Date;
	bh=9YlGfh4PIGPX2fbjZUMVRTbuvPlOEoWm9Kt2sYKpQ40=;
	b=A2iopv/xNpaksr7cgfCo+Xs3j12zG8iqH7R4WCj4vZvl/6pXpLcQ3ptn6BqxQ40V
	+bRIJiPqNgtYW84+5e+udnSkJNmjWFSRHjlfaVpiNEKsbAj8a9JgsZmdmB8oULf1Dm2
	bfIqObgIvGeiKGZuIbzs7AeKcntQQyiHgSo/GzoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657907812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9YlGfh4PIGPX2fbjZUMVRTbuvPlOEoWm9Kt2sYKpQ40=;
	b=GwQy8/I1w6ngd9vAWeevFZD5X3EXAem9xwiqU3EwJjKsepf0Vgt/F1UDCW3uw2Z1
	Dr60yWcdIJ0PimDXFDnbkafw3U2HbZheHeWbKRArm7NGTorkcdBRInmIDqSG3xdtnP9
	0UFYScsTW+FoPWr3qPG7E3wrEDY8i3RhEhbbUVIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182030197b3-68981c25-d4db-4ff9-acfc-8e0395fd8f66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da0d5d4d3bbc124a8dc578fb5b07122fc298b2bbd6209e1028ba9d523e8f24b0
Date: Fri, 15 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657907812
