Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861A77A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 11:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655033339;
	h=To:Subject:From:Message-Id:Date;
	bh=OQGwPJEEsYfWB/BhyXxwJxP+jCeWM34hlEPQkw1O+UE=;
	b=XZ+f2CYioVDlD4ZQ+RrTkhSPhEuP8EW8ptygcykmkeB/Dur1ibOnFhwrXYzfuWHR
	uB06kT2h69DWva4kRjLPp3t8SODy0p4IzbUNrPxTVaZCNKgYU1naezt7F+L5mvMmQMl
	3g8+vYQ/VbhNbf0QlsNejXNuzotY/wN4mSkDNJjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655033339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OQGwPJEEsYfWB/BhyXxwJxP+jCeWM34hlEPQkw1O+UE=;
	b=dibwsUfnHlElWzMdqOP3ikgVrg+5b8zG+vhzPLBUp2omA+XYTlu1iJjqK8l1woNt
	TXvce0dGQGqlo1XyHtBBZgozpbVYPgKqA20RFO+29zvANssOT+v+vkIIP4Ao7J9Fv95
	Fy9Ivg+qD96nIf0TLsUqZFcdzwZQ8dxBibp/2Rqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157ac9d96-6f8af3b1-e9ab-4304-b37a-443d720f2cfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b7a680fcb179fafe7ddeff8618f0a846040793df1c9251b57dd3fa1b42ed669
Date: Sun, 12 Jun 2022 11:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655033339
