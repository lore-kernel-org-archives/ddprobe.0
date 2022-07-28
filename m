Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720477A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658995852;
	h=To:Subject:From:Message-Id:Date;
	bh=52Gl+PUR4XHjGKktwrDakyQGRGOE79nT0myyC+q4yng=;
	b=gTG2UrvCKWrTOC7D9CRvXz/Xfn1OY9jSXHWGpMezL3xKmWaD8EuygXL4guMMcoVU
	lvY4hdS5wRH6+ptcxpScsUIa9jcCdgXZHh/h/WYTvCeFosd/YrVj/kIpi2k4qJVnume
	ArOAQu4BQBQFVLRucBp9JSa70nR+XFH4oBCh9PMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658995852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=52Gl+PUR4XHjGKktwrDakyQGRGOE79nT0myyC+q4yng=;
	b=Kh3SIbCo6yS8dcVZqz3VfWK5vB6GudjUOJWC1xWKdDK8PEhmqnF9PCptOzMjc+pg
	7ElSfLI6SkhL5YFG0ZKXQ7B2US17IyNz8zdSVob6PPeNshmYjcw+Tp9ixcGk0tOdWJk
	KsvEYah45XoSrWKl1ntvE1Gb4rBCqwV0t0ATasQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243dbc4fc-ab6133d5-616d-4043-b3d0-2b18f9e697e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 882b3fbf30d4307a5b57c083651a4c9dd6982fc70ee75089635e80d046da6314
Date: Thu, 28 Jul 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658995852
