Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BC6365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660282852;
	h=To:Subject:From:Message-Id:Date;
	bh=Psa5QxxgT6fJnwL5JrwuTygtHETQSqhM0uOCBSWpREs=;
	b=PTOB7Cg8wTNB+W48DzAChauhSXvX9RDsOmrMXSPWbVUViQLNFUAS6fZxZ25RyMwq
	wdu2BDkBFhx6V9ScxGriBd7kjWvGcWdztlepdnea8kfiRLLYXY1rHO7ZcsMNcHdyhXY
	yikfdKPGYH+nvmvrQLwI/uTMtbHl5bxOI3JHGp8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660282852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Psa5QxxgT6fJnwL5JrwuTygtHETQSqhM0uOCBSWpREs=;
	b=H3JhC8yMaeE8N6N0EWbPg1SBs3jbLDmQCCl+diFzRxDiK/vSd4yOskUhe2UPGqh1
	3F6VRmZjfYRGJsrVJMDATH1/mkR5Kob0No8V1upG9remcHQT+bD0WCnC8p3Mejug0aP
	ZEdYwi1+PPay471wNO5YTV+Y45i0v4mzjozKfglc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829091d4d7-6e92a450-99ad-40e5-9eb5-43dbc82c8ab6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58863981c9e7d9ab6f576e97660dee1fcebdb0245ca61f87996736ac98c58ed4
Date: Fri, 12 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660282852
