Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C11FBA
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 13:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649768758;
	h=To:Subject:From:Message-Id:Date;
	bh=47nTtFdvxyevfm9YjbHmApuUpBwze+tIXxiDlsVzD/M=;
	b=DvF8XTAwi+o0/CYxwoWdis1/mhgUb5r7Y66XzwrMD7sXkvdpjh84wH7WpjZkaX0U
	h5NpkrdkJMKd/UDhC/3u8dcL2ubQJsdXTNR3lFzzc1/EF0bmmBgocqJI963LI1yUdKD
	PAjKBRKlSqvDNhW/QWpfQqUln0YWLQOf3zbKqFC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649768758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=47nTtFdvxyevfm9YjbHmApuUpBwze+tIXxiDlsVzD/M=;
	b=HG7WK9sxGclZmIsZvUqIM0Lpx1cUgymVAKloLz3IeE8gADGsXpYkvAxOGSY3eKxP
	ngWC8kLjriTiLrpCeY89erNRGt4srZR0MnL6WVL3IeMu8Ev2VepyeDJamLuE0CO/1B8
	+PCThy9yB/j3xlTsXlUjyagyUfTf7w+Ko1FwT3Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801de17c1d-688b801f-9133-4386-a7d8-3e8f986bb678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d76663d2c5587e87438fc61bcf6b56f2f1adee9eef3f67b7e63a72904cdfdc79
Date: Tue, 12 Apr 2022 13:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649768758
