Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615A74292
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647518784;
	h=To:Subject:From:Message-Id:Date;
	bh=DmUMdBS6km2CBgip7KzKfVYjpomsKNON2KgBq/sG1Qs=;
	b=RzLusbGTsdFi6RqLI9dgCNogs9Ygdh+SHn6yCUIqB6D6CJT7h7z7gtc96nSyL2YA
	fKde595rGYBwm5Ggn5yc1+8ZfziZjD7zKLotVT1guW78jA+13/u/WDvmMj66VNm089Y
	ykh1DaqS1s9bneDJqlCm0+V4ch6p3WM2TM0ZSB7c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647518784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DmUMdBS6km2CBgip7KzKfVYjpomsKNON2KgBq/sG1Qs=;
	b=Tayl8XzTlesS4QfhZhKnSs9AOYaZiuoNhVJ3xe/lrK0aE1pjrCSQh/Rsu+V6wILf
	OCovboBqidix16wrQkc1pXAQKmWLJUCtNnis9HCT4iAUu2X1Y8ZHKvyiQFjf78UAjTE
	NCk9doDTR0kWOLphWQbtIPRfHuRGu6QHhnFomBI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97c59d33-b696491c-fc65-40f4-bf66-2db31bf1710b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27c5d601d5f42154efd63879489537001d9ebe7921266698d641262af350983b
Date: Thu, 17 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647518784
