Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E6133E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 22:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650838678;
	h=To:Subject:From:Message-Id:Date;
	bh=uNMW+MlzuCaHc7DscLBdDAkdOGi2NpXjVz9TXsxGa3A=;
	b=UzEbc7ZEPOMT41/laNqFPADPg2QwCeLbN/E/xOVzqZUWGqEAx4eOcb1MXLLO0VWx
	VX9Wa+0atGV+Q5HNwF/G6k/VPboLa5ZtXI2PbrcMNIJzeaqRvPwTAgl6OTp0Cc7UBKo
	F7vbNDy3ae1v07bYDKx3ud98ftUJT8i39QV7N7io=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650838678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uNMW+MlzuCaHc7DscLBdDAkdOGi2NpXjVz9TXsxGa3A=;
	b=CxtlC6RgQpDHCwaYyuZt4dPm6KWESF11Of2CJi3IUfFwpHXQp4PfwKl2KCW71myl
	g1IP4QWlvocyZCttHtwNiLbBvk57S/eaHtC3KQv+zu39lwMwJ5a5Ee1tdytRdwRDDDa
	3hiKqTitBkZnP5kYxnTLUmWWOxIl8x5cfyHpGNe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805da72b0e-0424133d-8f36-4293-a133-f33b5cd61672-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e23deadb79d058e09acc4156417a0d33df38e48c893f271ce9de35ceae30448
Date: Sun, 24 Apr 2022 22:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650838678
