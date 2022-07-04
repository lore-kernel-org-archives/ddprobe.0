Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F0A4A0A
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656964012;
	h=To:Subject:From:Message-Id:Date;
	bh=V6RKto2FQWNXeqQREM+Mv2ldiudGwCl6BeIyu8FcvnQ=;
	b=Dvj5U7U3qEx0NSDyRvRm3nANw/sjTCj8N4Y9zxSAhT7JIX4dxlMMGrWBSZeqjzwH
	hEmSVx3obnSpVADdIXiJwxi4eVasycvUN8Zylf2tf/XhBdfPDDpvG3dVeGDa+3ppKh5
	gH8dS0WAi7gZGCWRSxg+kURS/Vj11Pw7mQUZDQUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656964012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V6RKto2FQWNXeqQREM+Mv2ldiudGwCl6BeIyu8FcvnQ=;
	b=JUJOvuz3GQMxhCPjfDODsXqeJMW9PyIDFteVDLWTBewdZNPfqJK568xIbWfoRfTA
	bjVleYwEEHvOBG4bIqA2n5nRgvbruGhOpJiHxMkAQO1o904n/Hdx0UEfr+YBsRtHgTJ
	/HYHX93RDwJWKOXedooo5zr6pLqMs0pWP4LQwUv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cac05927-8cf1544d-c71d-44d7-b71c-f7334e393c42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 313f09024b383733504fbae3202ebea6cd1272525a8e040ef91f430b0b57ea9c
Date: Mon, 4 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656964012
