Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CD9322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648309558;
	h=To:Subject:From:Message-Id:Date;
	bh=hgzuuI9tXedQ9gdEz81zo2ZIiHcdAOp80h7m0ZRyC48=;
	b=b9cAWAGXybR4WnBkN64IFO8KvzbxCZfW7SYCRo+421oAvSksM8ub6jnLABELpegO
	SvBria/ux3KMSSCo62pyEMmVeYpymcLPyacxvuxI8BNfa+WOTPHH2rASU2TKe341zOg
	7sR7Qe5NWmOyOzDVmF62FJKSqpEvFIF2AZFB6SMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648309558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hgzuuI9tXedQ9gdEz81zo2ZIiHcdAOp80h7m0ZRyC48=;
	b=k+ypQ04EkbpkSRsibeOKRZj/raA2Kj9vbSsO1QpiBtRQlLvHgXr1Ntxi7w409Kkd
	lI3TSyjWk7PPawp0+Ygr36eozXIfKgQXPF1RK3yZohlHfIVzXT5Ynlfsy9gZpnbCeo5
	T9jc4m7a62hmLaD9EhlrGkaAf079le50A3QvdjYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6e7dbf1-e61fc83b-3790-400a-aa85-5670c4a5a70d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43455be6ea2246468bce0132b1d493a3aa1424277009755b7d547ea8616126e9
Date: Sat, 26 Mar 2022 15:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648309558
