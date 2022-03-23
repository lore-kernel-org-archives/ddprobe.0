Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD497A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647995484;
	h=To:Subject:From:Message-Id:Date;
	bh=DZg4eW4wH4H3cpPX0fgb+bQUOyJ6Q9MzCsqLl36pygg=;
	b=QhHNSx87DuFChNyrWGgrkfxdaYK9T9ptN8eMFJUhJSVIKgfsiMBUUbMK5WQCzzCi
	Lw3lHy+RuKnGdoRflS2def0GN+Vy/0oUAywYk6fVNf6e0h4kki/t/EO6x2ha5cnaQmv
	xHA3Ps47JFVJuIFGKlpiswAMW/QVDYvZ/UgQchVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647995484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DZg4eW4wH4H3cpPX0fgb+bQUOyJ6Q9MzCsqLl36pygg=;
	b=jQYMfKaBWoDVbv5cjgOXy+YG4A0pbhuUXTxMkFSEgGehgxWuhdEcAxdLEP7M1DfF
	sibLHOamwFi3OEhBc31vj97CkJSDTphxODPjKlD2vrhnuf++Sjm0CD0Vd9ugbEwY0WT
	e3OGW45aImkhgj9IhT0XK15NezAb72pqBhdXQ2Sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb42f7a79-0c6ddb3e-c2e0-495e-b639-95754b32ac07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7e8215fa0d47099dddecb3192edcd63dedfecb52cee9fc70c0d196780fa1c06
Date: Wed, 23 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647995484
