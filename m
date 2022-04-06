Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AAA33EA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 20:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649275858;
	h=To:Subject:From:Message-Id:Date;
	bh=LG13POv0JLYgcu0fLE46qmyDh5DNPNdV4rj1DJsq4zo=;
	b=h7QknbXuNYzi4TcoonZiGbseIUAbxNV5h+iXdt+9T2xyLebFFevdhdSGRA2iPrro
	e6e+bunvJPyEdQIxywm4fPB9Pb736jBhYqzRpCpZHAHNHJsiXdyvIkNtbwcBa85ulCO
	yC+MdCa/nbLujUs6Nl+P1RzCSbDm+w3rSDz/znXY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649275858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LG13POv0JLYgcu0fLE46qmyDh5DNPNdV4rj1DJsq4zo=;
	b=Pg95uUFK5G8PdJdqcEQQYG80/o8srs50OpHN0CzThKMcnrHZd8uijJKnLscC/52f
	j59Gan07+mJJIgYjK6FxTeViKc6Bgz4vB/o0MLrQ2Ysyuszlsv1mrKE2WNB1VNDWnZp
	HPunvz1V8L5OLyRiKYt/A5eS0t0xS1uNgdBzmm/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018000806d77-5133ed21-eab3-4520-93ae-735d31d0ec0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b700294c126060b5f1f09d38903930d3a22cf3daae791d8fd9638854127642a
Date: Wed, 6 Apr 2022 20:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649275858
