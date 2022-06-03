Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BA5EA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 08:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654244639;
	h=To:Subject:From:Message-Id:Date;
	bh=TJQaWoPFrvdmT7wq1KhliXWNDeMDvM11Z9CMH7+Udh8=;
	b=Eq8KOxLthEy4TY0ZgjSuVHQbtseKsbA3LrA6ACLbaXJPCbZbEEK2B5jVQ1mNdIa3
	cRSuh7EF3DCjEjY4tRmOPIRguf6g/izbPL4s63KsY0OodJxDU/udf3GRblFNcleeT8u
	dB0gkGR7GsU7pmHjpjRrHJOFq2Wv5YLQKcaNbv/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654244639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TJQaWoPFrvdmT7wq1KhliXWNDeMDvM11Z9CMH7+Udh8=;
	b=GdISy6mxf1qCLAg/h9ke7YBevoMOiToG1pZuj/5fRlbEhBM2VPwcbQXXVhy288i8
	VnK7/lgeen+QZU43lIFIM/wTXkyEvrgwu5ocvqtDb/7+mOV7IyW6qyQNau1CjLiBTsZ
	z79TksuOu2HsDkWwUfsXxyzPsURGCZ3pXeHB8oDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128aa0204-1ff3d6e3-d044-43ac-a75f-9ee894ab9385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a780cd62533c25029ca9d2fb1a0cc8b33ab7e369b63d39da1220afab546d3627
Date: Fri, 3 Jun 2022 08:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654244639
