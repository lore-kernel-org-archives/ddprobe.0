Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D222F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657016212;
	h=To:Subject:From:Message-Id:Date;
	bh=U4SelIKOeIIE38SuSjCmHxg+IpkjXI2YC5jDZoRwyT0=;
	b=QKz4w/jfCT8+O0BdUkwygw3r/O23/qgz4VNOtZcAghUdyr8iEFFULCOF6kPqMFh9
	fFNPeHx8K/NGkgJfWd5JBUYsfxYEzvgX3Bt0HybWMmJn2klC/6NEoEIuAuhg1uT4aaJ
	B+xsrB4gq1gbDG9ghZJcLGWl1BRdz6J4ZUZcFFaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657016212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4SelIKOeIIE38SuSjCmHxg+IpkjXI2YC5jDZoRwyT0=;
	b=GVqO87oC8uVxXdi6sDa4reH6/aBURjoH+bpSnffI4SLPMZzc3cLVvzWrlGL7FdAe
	YuPqakliwLEu87cf/TN61CQSZdOwCDyxYgSuq+Q5rG6ZKMr2Kg97xJHN/poEuY1mET8
	mB2qHHal9tMfRmJkHGfJS25iA6MdWtWhkNkkqUIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cddcdb40-6d11b80b-7ce3-4729-9b0f-254522af9644-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0e7124adf0e523ac9a58c587678dadd5c0a64f622926c74d06b61a57c7af4c9
Date: Tue, 5 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657016212
