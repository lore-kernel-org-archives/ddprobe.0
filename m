Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC9CA28
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650357658;
	h=To:Subject:From:Message-Id:Date;
	bh=h8sYvoksRvo7jL7iVqj3K+/SYDpun9yYNW/O8iW1j40=;
	b=VdgH7JMsdP4dxqwvmDz2JbvE6bJjnCHfM+9bg8L+tkXgrS+q8uLoPlYy1sfGE/yY
	QCNqgCNF5Du3W/vu4dD5wmd9ctSyUhBbTti5YD2dDrMrpGmG4CLanYsLu/3ZhHNN55z
	8Ihsbj7dxKCU7v1WKcMRGvLi8IXZyJhrMVlo4Gqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650357658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h8sYvoksRvo7jL7iVqj3K+/SYDpun9yYNW/O8iW1j40=;
	b=AtJ6bXXQ6vyWH+mq+eIOsFco8Qm5ODdAzfanNwk1vCtgfH0mlz2EsMQxGnqI9oRC
	DTsjXsVyykMqNKNAJFOVLgNGY8QFC0smUMqb+CuoAAvNUZeumkAihHBQTGSgy40Q8bA
	D31Gh64uVN0pLPZATwCLBJP3/XWs5k8zM3F2J+EM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040fb6295-0a0c56f6-5567-4c48-ad68-298a45023976-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c196d99fcbe112701180696eacb67b5135853969a19ffc1ecb1b71bf07174a7
Date: Tue, 19 Apr 2022 08:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650357658
