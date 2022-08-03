Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FED17F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659486652;
	h=To:Subject:From:Message-Id:Date;
	bh=jrXXzDNEVK8opVCxe+uvaiMnoQ22nZ+0FQu2SI2YYOY=;
	b=j4Ppbi+/+3gy7q9nglOeyFHaetS3Y8WbQND0jtgyPx46pBHd2ZisB6O0k7mnhYXu
	JP7I9EJOZyonq2vQ4JduTDcG9MpjdMCEpTfFb8BFMOWrpx3gRPw8/GTjwX0DiBvO9vh
	rbFQVdMubxlwd75s/88Gf5iCIkkWS8oHLn7eHvyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659486652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jrXXzDNEVK8opVCxe+uvaiMnoQ22nZ+0FQu2SI2YYOY=;
	b=aiPQ5ICMK0/HTTrnFMWMb3Jgks5zMIt+HhQBz4SfwDnhlF3CtB6SvtIY++d6bYW5
	vKXPDEBt25HqFhMR/SBOc0A50QbIUtLzKOiBqwi7MhbhNMU5y8fdmmJO7A7+HnomEYj
	abM7TEEXzFyfAwronUh6EgLILJsvajoWcrb6Cfgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182611cc87c-97f1c37a-2705-4220-995b-c646c76612bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5257c07595715c8c133b500570c01831c814c2e0a6ba3659226139813c7aa27
Date: Wed, 3 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659486652
