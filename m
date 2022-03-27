Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A31C15A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 07:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648365658;
	h=To:Subject:From:Message-Id:Date;
	bh=wYrR2lBq1g2yb2/IAJyliFnAE9avHhXKXOwPrGx78GU=;
	b=myGWiXhmIgiRM9moZFr5GoOzfbsXW/rEonPCq4ge5rxctdeRWV27b0y0OcpyyMfK
	SQOvVTIMESdH1PmsxyUWt0+d+vM8OvgcKevXcV5fIjnKQbmWMLL2st6ofOMZgE6LTj9
	A5OxLT6FbY4sA6jDoaVYoJBKghRGia2zbifOI164=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648365658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wYrR2lBq1g2yb2/IAJyliFnAE9avHhXKXOwPrGx78GU=;
	b=gLiswMx9W2i2sjPNHxtdya5actIKAL2d++zOA1BMOHGBBaTNmCxa13ERURofePvr
	y8g8DtUqQFNtImDq8dLtKoBQ0ybKTJSNMIQ6cHySgV3OhvFXcXdXLRZVfBWkpITXrc7
	O9knAteJGXDIs5TqlbiOu6YBhV6gXtILZr6v8tqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca3fe0bb-4b300f5b-a3a2-4349-bbf0-2d3d46d91ac1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e384c719abc556ce527065dfae991b6a27fe7f806d537c313ad6105f8816c27a
Date: Sun, 27 Mar 2022 07:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648365658
