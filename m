Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0430F2567
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656013612;
	h=To:Subject:From:Message-Id:Date;
	bh=ceQpmeCui5cxX/tjpx+zWXI+PXxZyT/s7DUUjUuPBeA=;
	b=Cm1W/qwSOA4c/0FMWnH+cvEvKiwzT7j5cYdGtJsdRBPXLT++hpryWbSpg8DMFvk8
	U5aRywhVKiGkzdiKtHrTMe4SkESegsn9L0ybC0BcIIrfo+rOoH8e8ElD4y/C11XvSd+
	JLuV48hdEcRisH/lew9vDLlkZkH4qORGlLh3PkJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656013612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ceQpmeCui5cxX/tjpx+zWXI+PXxZyT/s7DUUjUuPBeA=;
	b=cYyEoESIlGDYy4JFb0t943LYWqYAAogXDr4MPFWaCMz1lyJcuzoPFZRWhvXJvez5
	YlvkKLmJk18Co52KIfytXCZNkLnkKPwPMfPY7JVHO0WmT6+JGg3c2iSdYutwSVzxual
	EEO1T3jqAevpIhRwnXOfFwAGiNtiENxogXhyX1C4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181921a64eb-f9254248-ba0a-4bfa-a61e-251ed6594ce4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3c7cb48c38da15eae34ae517b5360f9171bb460fc75e003f25f3e4feafd0c5d
Date: Thu, 23 Jun 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656013612
