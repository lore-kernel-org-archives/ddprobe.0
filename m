Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4C97D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 09:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644831616;
	h=To:Subject:From:Message-Id:Date;
	bh=sO7B5K0L9iWIf2XCAFLGdKu2pRRPvu9i8ZpKGPikKac=;
	b=S6YARMyvUBIqhecd0Kk8ZmSXfrOYRnXQgqR9pkeBNAv2PalkZO08ajkVmAhn8fHH
	G4ddhfFA2JBbFP84Z/p2HT5/SOzRsbSvtNWjrmWMl0pkpd6PloN4nXzbJMOvSbCk7AB
	mkZKj3siNhujeQo1Eg7tso5vKoPsXei4Pv6mSe94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644831616;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sO7B5K0L9iWIf2XCAFLGdKu2pRRPvu9i8ZpKGPikKac=;
	b=VcSkSOoMw53ZTuKEJkMmmitqZgHRuQfgaMYBn0cq3BJTQDWKkc4CH0OLUPEy6TtQ
	GAqSVxqKphtRJh62fmtHrX4/spuAPTJxVYGe0Xp9BhP/Y/4bvzUifJ9jdDDjPUtb13r
	6QdgaFjg+Bszwkg03MAorvG5ckUy+0A5G8H+AbUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef79aac50-025f175f-b310-4c62-9d64-47b01e63a81b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56528c50a7b6fbf2379412a40dc3e8d0cdcbd98275ad9fcd9349be7b4579af8b
Date: Mon, 14 Feb 2022 09:40:16 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644831615
