Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5914517CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660124452;
	h=To:Subject:From:Message-Id:Date;
	bh=4ZA3XW5ge1LDY2z11QFlgEg5gZw9OaDLZ6YX4uA8X+E=;
	b=Po2vpkQ6xzR/PaKHonmLQQUymyGskW8cC/5m1M/5sqJVc+KElyDCjEuq+vXEwE3W
	+iSWG1wVMWPMHQDASQkfF4fu8B8wEiTYl7bqyAq0SexuQVU4Gslc+vjKNVtJijHNpiC
	f7crsp16WXx7OevMvMBU5vZY5+oRukRFDlOMblQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660124452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ZA3XW5ge1LDY2z11QFlgEg5gZw9OaDLZ6YX4uA8X+E=;
	b=NuwH3u2iF+1tTfRX2fxSAENfNGB1W9ZBemg+vCXP3H/xNAh7BrRfoDOHF2Zi/zaf
	WGYgk/J5/sPpr5AmwICdutJR4n65SDBz5z+0QjcndldLQxIwoNVEi5DtS9M4q6vYTKZ
	K2O5YQZbLPIWGdS9c0CfVCR6vNsKBOE2yr1e1KVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828720d6d4-87ce2cad-5b02-45b8-a85c-49ed93e64b8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a778a602a5770e841d12739a1bd301e229c53dd5a4732d9ba3289fd95f0c3d1
Date: Wed, 10 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660124452
