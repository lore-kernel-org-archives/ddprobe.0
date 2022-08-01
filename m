Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AFA7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659312653;
	h=To:Subject:From:Message-Id:Date;
	bh=rawh0Ld1Mynx0ychhcGf/KVM9hTELBbNiVVSWMwizgg=;
	b=in8EONrx/LeQxTwibRjyNCk7HfMNladfRJndAaq6N3nxZ+uFvSRruLrnvAJpcd9e
	zeCOcSv70Pqf5ImL5KOJFeydnnIodY2whLAgDS5T+Z5tFLHbSmxrrnxR8xcpteEm7Wa
	37CbKdgJcNEmsyeHe6cPTtek3+FeBR68bKL+eavg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659312653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rawh0Ld1Mynx0ychhcGf/KVM9hTELBbNiVVSWMwizgg=;
	b=J8Dyb84ZI6BR2f6YeqUMLulfPWBDBDR0nICaayHHTKn/PxAKGu27QAXGB/9wzcsA
	5a7xjGZbdSN3fjLcWGYKL1O5ZER5RgtuolbResphKsVjwOt+EiwV8/hW9pLW6iWQ9ic
	alzCvpYtry514gb5DAz/UTomonu5WjWRkBtlNh1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256bdc136-ca92c959-04b1-48fd-b895-470cdcaccf26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b4752372396a3e00ffe6d90b56e6ccc6c1e0ad0a937f0d31483e25f071f4fea
Date: Mon, 1 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659312652
