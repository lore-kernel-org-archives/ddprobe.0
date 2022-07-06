Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CAA173
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657067212;
	h=To:Subject:From:Message-Id:Date;
	bh=d+3jTBmXYbEqjo1vVIkA5nMLZoZt2j573o2KfU8FwA8=;
	b=Wy+VcuyOFInunNkPlpltU4zW+7VLfj1nhZXjqdDC3jLkU3RN1ZZATmmDJowFynLi
	RN0kzDavGX635JQy6zsnvE0j2Prznb/6ldRUURuzL6KGL5/DJW/XCgwPJbbRwB4RiFV
	UJOPBbKc2b81AMekCtcpWnjqeh5Ilw51OwACcGqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657067212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+3jTBmXYbEqjo1vVIkA5nMLZoZt2j573o2KfU8FwA8=;
	b=O3L6oxFBz4o+u6T1hoAubXSMDPj59eFSDIf064ziJsLhI0VJQpaW1EV2wQXuGZC0
	kWx9YVoOBQ+mXpSE+uyP/doAQAuKm9ddBKrnhuS3F0deUVyqiPzXpRBKE39Ip7x7oW/
	NAyKneI3OkHfriIlg3491UELV0CdPcD7mRUAtz9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0e70e07-6fdda350-4f20-41b6-b832-6278d889883b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1de93066cdd44be2498acdda34631979be994446ce21f105e2bfa1fd257638ac
Date: Wed, 6 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657067212
