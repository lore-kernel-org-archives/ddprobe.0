Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E3817C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659265852;
	h=To:Subject:From:Message-Id:Date;
	bh=gpieSRLNHJqVINxvX5iR63nlHeQhx11XLN3wwwS3POc=;
	b=NwRoKspiWZ25xAFscr7XQ2vXNLGSGroiYsGZAsEoG4Ew0SRBdjtbE4dDDWN3rYjC
	YQGJHwg4jw8K+/7AQlIb8ejmX8m5dlSmuxuY/455g679VsNklkaXW0HPm0qZrWNhrCm
	f2YvEwrrw5KzD/ffi0ELToQUOTTzq1Kq02l858W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659265852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gpieSRLNHJqVINxvX5iR63nlHeQhx11XLN3wwwS3POc=;
	b=B5dsWKSy48yn5nQQ/9lBtgGiTpyVOKrj4+R7mzUjF+gcNufnfgnWsigpvnUkxegu
	KXHqakd/rF2b8RRv6NRIKJxkSFfM2rWsn/bp0dsOpgCy4KImcxaurSMLC4No2pvIqix
	8sp7YeNLyPV3jXZC2xaNsv9LlkVHDoKEp2M5Eilg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253f3a4c4-2ba6ec55-506b-4ee8-982c-54ad73a62f2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0734220e2c48dc79eb65d77104c50344e54024bb4ad511d807cf86a76e2ee30d
Date: Sun, 31 Jul 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659265852
