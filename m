Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C29EA6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 15:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649603518;
	h=To:Subject:From:Message-Id:Date;
	bh=eYbF4tP9ZEi29gWXcyPYuPtO54RNPGdkGkY6hO1vlRo=;
	b=ND5sravNpK0znkfMlEFW8zYh3MsEUFfL7423loPo5edewKSL3bgxkaf/D4QOU5A1
	AJLmEqhMk9lcvYzH5f9eI0kq8YH/Ik+1NxaCa39yowlJKfllg8padkIJ9xxt46AkFUQ
	YWeGuiXQ1NkWR0aX1+p0B1RBGJn+LoryA+8JGtnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649603518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eYbF4tP9ZEi29gWXcyPYuPtO54RNPGdkGkY6hO1vlRo=;
	b=WyO0mBnY0OEpdf58wiOOP6WVYQmajhE4ymQ8vLhmOnn234poD0OankMNZQxk8DGV
	aclzHvRel079foiu6qOWZseC0xAJMO/WJhEwLdcDpViHPOSkchi9XhIvTZZPr8xYy1x
	OCR7RdfSchrbFRDhHVl54dZDl+OgEU7OVtsEPaKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018014081f2b-81b37623-2fa3-46d2-9592-a849df9b2f43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8769d476967d84fbe1cb6437c13ce43cc03284cff6d1cbcbfea6658d6c54499b
Date: Sun, 10 Apr 2022 15:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649603518
