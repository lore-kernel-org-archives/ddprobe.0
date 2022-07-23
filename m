Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386DA7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658543812;
	h=To:Subject:From:Message-Id:Date;
	bh=/5SS37XsxAzLPI6ch+cx6Lo6mNdph8NT0CBP6NtbQ7o=;
	b=gTbfcbc4/hb3nJ+XW66SF3w56HxLX07t9xJaBgDc+Au6ZTk7OE+FLXlFBwVmqEgk
	7qykzgMsYlv7X3KqXreaEL8ly9KRjF1+eo21TqDzVP9nTZjUWWFru95sYA7mM8pyE2w
	htiNty3x4Fiek6s/ZkkT3LYJsho324I5urnApaa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658543812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/5SS37XsxAzLPI6ch+cx6Lo6mNdph8NT0CBP6NtbQ7o=;
	b=ipAzy2wc3sy0XYHcaK1qlFORXucqDw3O1T/gbsf87XrxYNXq6RvR1KjSbeo24c4C
	0HEKkxjHufi22m0P/cRi+HFwk/AC2YLF9M5jWEpJrBK0rdbJINnhlDfELeWN0PZr0eA
	OibEO9oqn/GVQ7h4C6kB65Eafq9zopEiTQrdaNQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228ea2ee2-5782ce76-ca87-491a-948a-3a3e44c57671-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bcd38b3c2c18a946a09d6edb928afa49a42a198b7f5e1118100dc0ac63833b3
Date: Sat, 23 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658543812
