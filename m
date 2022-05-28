Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B2B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 01:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653703199;
	h=To:Subject:From:Message-Id:Date;
	bh=DYC20LMAqzz800KHJSl7A1cLCFUoRqjiQC0EEj/0psA=;
	b=MDiHL/MeC6Rz03gdp2pgOhXmmOTiCaHNj4nIOErJcP1WcUZ/hJvEvZLRp1JH3dr4
	9aXzQyYOjk0WxRs6XLvVVneeZisDzE4ANegkJv0F7MshpfMjQvyt7bO42jKBFYuL4AQ
	qtaajiln2vSzfdJ0hXI95Y5sDHMhR/Fn92F4/aEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653703199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYC20LMAqzz800KHJSl7A1cLCFUoRqjiQC0EEj/0psA=;
	b=U89AG2FBs38s4JMBAQQ3phKBq6xYlYq6VnM1KTu5sqUb584C3F1v9nbIRjJaj8jf
	b6gVTn+AtTO2yDPyGBP8S62XPlkV5NwpLEUJy95o9T2Ol6lB6NLkCkOUaGbtwiAeOmd
	Z5/fhrAfknU5HioPMUyBTgbWbSntiY3wow3n1H+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108644a16-c432c821-c004-4910-9e1d-f60b897e5b5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f4b6819e32ca8f7b1948f0e09d5c02b7eb58d0493b84dcec56a3eb0c9a3a0b4
Date: Sat, 28 May 2022 01:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653703199
