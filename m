Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F17371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661068852;
	h=To:Subject:From:Message-Id:Date;
	bh=KVYcBF4cRBvCSG+blzuwVOjXLg59FItYE1huSot4C3s=;
	b=R5ohcKOkQo2wD3iDeMoM9bc9wTHfX9m4WNHxNGabVX+SDNj7Np85hQ3CHl82ucog
	Ix+jfccqcEBtWqDM5R2Scq3Se4s2O9vGzMjlfd0ZM7df1BbS489kTuVxv7Z390HUuh4
	caEpdOMdYs/Hp4Hjwo5TfzElnGypLybC97HMW2UM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661068852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KVYcBF4cRBvCSG+blzuwVOjXLg59FItYE1huSot4C3s=;
	b=hML98pwcZZiFvgxKWrrxOIrQkU3cpNXfgQgID1bwAFlphYOwOuG+ScVnhw/hWAkY
	oTXpRTjViaVQDQ8Y07xc2CDZ2Kd5Uqrt4OVgoaFWcb2Z4DnumErP2JwA7qZ70ZkmMru
	dEq4Xg+TpkW7CvKFEIOwS6Rtsq0nPqpCJ9dYOij8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf6b3d5d-5146c7ba-87d8-429b-b94d-783d0d543ff7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 025867e0b97da4291297a10bcaed1c6d679805a24f4cb895f727b6cfb0895efa
Date: Sun, 21 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661068852
