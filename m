Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026FB368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657159012;
	h=To:Subject:From:Message-Id:Date;
	bh=zJGKFxVoKzZsfOYZUXR8ZzH/XqfOK/SizTrJJLyDz2g=;
	b=WtgyPYW7lZwIXD9rKyxdFeKpE6q2XiAQJz/MmToH6Pqzkqvb+wbz2jquvqWA4yPb
	/cTEqKYlMLPwC4MNRTUG/Q9nwxcgcGqCtMKJKxwwQ9N1TwV0T13dZ9jcLJ7R1jdof7g
	6IcrUKsZtLOpZDwNiuJrDeWgikGVnH7GSKzwEnR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657159012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zJGKFxVoKzZsfOYZUXR8ZzH/XqfOK/SizTrJJLyDz2g=;
	b=cILCSS2wY9PouAiT2Idc8ZHRoCeQd271ZMn7NP0xu1Kysh40JrUK37dVVCDRGjN6
	itOrnKy7o+GFJ5woEL6MdqkZct4bdi4glzegEgdgFtI9w2KVTUSoRH354G5rd6tQV+W
	X3CJmdDlWna8OPD6yolmkZSqoVVQgF8CQ9ji7iMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d65fcf9f-3e532862-56cc-4dae-9343-42201431c46c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 772f673f49c95d4332dce5260ed17a70e12f073d9d824e0e52a28001acaa4c64
Date: Thu, 7 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657159012
