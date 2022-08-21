Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8DC20ED
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661098252;
	h=To:Subject:From:Message-Id:Date;
	bh=hyx/MH1s4lbGVTAPrzU11BtvfvlV3AIQIrBHqPg0XHg=;
	b=Jub8SgqCYZ4wIbTudYuRe9djbqp+CS8NufzJUkOJTPpKYs20NKO/q/MfACrBWOck
	jR2CbbSATjWCV0yMlxygs4lQDSGIomG8zZ7jBx3fbM83f2opM8ztc6rRUeKSX/6K/Bq
	qNquoF5WZ/FY6lh7ipFvBz2kNhwD/Mbo0C40DYw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661098252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hyx/MH1s4lbGVTAPrzU11BtvfvlV3AIQIrBHqPg0XHg=;
	b=Zg2t/yun0LzLCwsRWdq7sV0dVwUT6O5Ju70wIlTUaBbkhIjMh3KXo11XKhfrR/Tw
	gZhfLI9B+7g/x1HjXKjEHkklb7mMIKsIobuFOnCyZyM+cVYwcF7H/a1COxk69tv9wEp
	4xFAR6tQwXc3XHelmMtyKDZk98Q7Lo60hXfPVFJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c12bd8fa-473c9fd9-c2eb-4197-8582-6cec06d99699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca13daae7288404cac3d9c90f0642e4feeaf2fef6036bafb2cc25581c3472034
Date: Sun, 21 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661098252
