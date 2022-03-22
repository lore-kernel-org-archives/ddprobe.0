Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA5A42B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647975984;
	h=To:Subject:From:Message-Id:Date;
	bh=lHGFXx24r/TegJYtaJ33dGa39ilZWdcPxd4n+xTWQjk=;
	b=J79J5/PYzpOaxWPOLqvhgnGNvRJOjSXyAlPwLTHoOR9gESdcWPrqAVgCcrVf8jwV
	aDh/oqBnsbEgl6zW4j9/F1i44o1ikf0fLR68MJ68rXgvqksti7ycdqm+P5Dnl+a10yh
	WiOz62i3bH0NKiWWzbZcGbVF/HDDzVgzlfLDcEw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647975984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lHGFXx24r/TegJYtaJ33dGa39ilZWdcPxd4n+xTWQjk=;
	b=fJkNdkOLvpqWjssrZ+Ozddv+Wt3wCCLnq7H9tv3ZarDdLaLS4xg0VVMavjLWZJPM
	NPefDuA2eAHr2Kz21iUlC/9QD2o7qlP5oaTSEs//uF6Wz7zaFQ7MZ2rvupMaT4dJgj8
	rTfA3g8Z6J9r1nXEPJsLW0o8Z8+3VYaDAXGBfuxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb305ee65-9119e880-f88d-45cf-95df-5f62f6de9723-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51aa6185e3eb03fe91b0e0daa0204260f440f7de118570d4b7c753d1342bdc52
Date: Tue, 22 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647975984
