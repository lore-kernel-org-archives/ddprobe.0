Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7787A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 05:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650603958;
	h=To:Subject:From:Message-Id:Date;
	bh=bJYZCd7FQYSu2fdfHX64JLtWZTaB/P/ENdueDXOZe5U=;
	b=lNINT+FREqdqcRtxekhXzM0eWQ0PkueoWXJAP340SpQ2DFuFrqlaRrvJ/ukN3HhO
	PJJOH58y2y44bibHfU3MQIvvaV9kxIC+cQsxOgOttvo8wJOvN+1eEXOTIC8aoqVI9fx
	Hmj0qFBXNQsofzK3+Hckd/duZw8M0gtHsLWA8znk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650603958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bJYZCd7FQYSu2fdfHX64JLtWZTaB/P/ENdueDXOZe5U=;
	b=IpI40+D5BQUyXnNDzlvj/VWyfRhwgXHxG8xAzNcx8mFBbZn7h5r18v7yA+mMVuyP
	G2Y9sL7cftxSz0GTx6Y3Sl8vSkIANIUsOXLsVLptsHfXTHlFQ3PBpO0FqIZVsrCSWh3
	AFDAYdlGw15YOotOL2fPvOK3PnkitjVKzXbABKAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804fa9a011-f06d7da8-2f09-400a-b1c9-5a8f99983ea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4477f385923c84946abbebbcdc1ce13fddfa43e41c1741149088d459bd5d9cba
Date: Fri, 22 Apr 2022 05:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650603958
