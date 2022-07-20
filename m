Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879F74C9D
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658323012;
	h=To:Subject:From:Message-Id:Date;
	bh=BV5lbkpskMDALsIecRKCTK6AspSdgs+tJjJbF8K0DqU=;
	b=LmAX3vaQpu6RfciBIAdGPzrE5xNhEW9RaIi0POklGvQTq2ubDsa2zSmqJ8HRk7RS
	KWXJx2gbXbat9YAFWPxfvm7DTOSRh8AkYahqJ3kYHbUSgp7CtA8wDzbbvKCE0i0dbF1
	XPzYKf7+YNp7FosoLwRtqPRp7yj+TAckg1KVa/ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658323012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BV5lbkpskMDALsIecRKCTK6AspSdgs+tJjJbF8K0DqU=;
	b=FNXqVq/j4Y4BdeUAgDjw03yUzHFB63ZuaPaZ1n2irDV7HmtfqxPNDcQF7nldrKD0
	8CGKG5ktLzbvPJ9d4hg8NJqKnaDUZcLh76tOM4PdaxSmgKD75riBKEdWiSHmNYyqMWE
	sSqJ29WE1SshsMU3Cs6jkql8TIQn+dlT5wzeOdFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821bc10ad7-ecb7eeda-5ff1-4c94-a2b9-5397d681ad6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea659ebd708a8e5b7082955f4a7a5dbc006e86ee19754c0d5293d8d9dd2328a4
Date: Wed, 20 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658323012
