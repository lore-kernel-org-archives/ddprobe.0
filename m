Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A017A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 10:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650710038;
	h=To:Subject:From:Message-Id:Date;
	bh=kDYo0TnkA6hlHvjS5+5zi+FpQSVQJSUSYKkOqzAn1zg=;
	b=IZWl3brTpgGe9Yoximm3KvSDqK9q/dUSAyS+XgTFdXtZldECSxrqP8zalW20GwnS
	R5bNnt1gHHeF4f1OG4acCYw6dktT7EJ7rYkZrtT93RN9f5kB0UfH3IqU3ZcUSj33isA
	FSAcUjp2GZ7JseLeHV/ggKED6M6oAAXRKl+CGBTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650710038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDYo0TnkA6hlHvjS5+5zi+FpQSVQJSUSYKkOqzAn1zg=;
	b=WmfvHDTdoq3V/zxe/VArMx8FNMCGzcmCRF9rTJv0TPwQYTujgytHKJPPoJ8g6aCO
	AGcDFj2VlV2v0NmXnsUHvXCvH+oXwLybGDlk8wxya/uPgeyer+Ff+FKTM0hJLj9vZff
	jJ+WhscbpFPznyJh+l0wWGNMIYpFw0/2mlSnXyoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055fc46d9-9ce525c8-34c2-45c9-b25b-2b40c7dbd75c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26a762153f456c8703b515785f8d02192dfc77fc140360e77a25bb50927559c0
Date: Sat, 23 Apr 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650710038
