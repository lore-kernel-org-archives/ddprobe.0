Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7773D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 21:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655760359;
	h=To:Subject:From:Message-Id:Date;
	bh=BforCmqYdxQvar7+wEun5AEDShzKK4lSRWQY4xH+SiU=;
	b=RxZKerCA6iRpjIfb/iketRCoI7Y4XQY4Hy2XLyhw6LTtpHuC+oVUV7xxgAwzYqts
	UTU+vYMsKTVc36Vyio8q1QtLCIFayXOE2iUi6N3Mu2IuoM2nu7WqfXNstHT+1f9+MOa
	aYNfjfeBgJMwi+/3YsYvlM79uSEkZwF8PY60ihHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655760359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BforCmqYdxQvar7+wEun5AEDShzKK4lSRWQY4xH+SiU=;
	b=il6VXCSm91nQ9Xvve0xPnMxPOEyaQvLjNQjrvg2TJQ/gLC8u/HTiOvE/x3p/9IBF
	uGikdS7sK6pQTPJrw9/duqEj4q4tIf0ZgwdHZCXLozdTBj+Hqk4pIi+GaUfAf4/lLQt
	vnF6El7QUqOxhkjZM8yfGcVQCJpZ3r4vNgo9QS1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183020f5a-c39be1a9-456c-461b-a822-8238d2f439b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1922c247cdf6cebb93c7cff130b667894b6c5d8c77c01508bf7deba6814655e6
Date: Mon, 20 Jun 2022 21:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655760359
