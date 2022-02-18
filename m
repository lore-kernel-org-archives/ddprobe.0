Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF2B48A5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645210285;
	h=To:Subject:From:Message-Id:Date;
	bh=ONOg10/VCmkiGB2h2SsrZj+gtkS1tlN8fs54JRrmfK8=;
	b=jCYKHpNRRrm/7Ru4c5m/GZ5uFBkTN3yYJyfL2pFxIb9e1w2qGe+WICdhuZMwbJM5
	1d8uI4F4QfSCnf0Lo7xzc7Pw2P3S5lsGYYoVK7tkPYyVHTh8sRvxtO9Tdhpmp6kJYe3
	5Ax2wTFYL6xv1cfwwrT5nkaFVRUhbGz86oTrlHGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645210285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ONOg10/VCmkiGB2h2SsrZj+gtkS1tlN8fs54JRrmfK8=;
	b=cnEBDQW4uQR2zXFUWlYSpA8IxFi/tUZayrk+2SLrmaGj7NHXyu3zsxQAxFmFqNW4
	Jh72o43jxbsBW0rFtGeCtGWThkgUuObHvkLM6nf9UUxLv4aP7UdektrMNriRxBY9pF+
	gdqNBD/QWokDW89muI79WY99d90wAxw1bSq2aduk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e2cb2f9-404e5224-d515-4920-8f83-6c37be313519-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec884cdca50dbae2b69218ed5ec8e675abf7fc9e4774b6323d881c3c39f58f1c
Date: Fri, 18 Feb 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645210284
