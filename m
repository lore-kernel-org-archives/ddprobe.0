Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E57F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 21:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654983959;
	h=To:Subject:From:Message-Id:Date;
	bh=cv5r/qvTPceVdEKw8TB994NoQOUYUstJKNYlbVEixeM=;
	b=JicxCkDHWfdntcqPF1rNABdFR1cVbTNqtVg2kNnq87C5CjNFyWJzsonU1w8ptLPq
	/4JYHRZZ57nJM6GEgTSau9Y/Pp+adOvThkEDKYFv7vSTD0QXkX1FRKBOPRlgwKUZbdl
	73OpBvmeZZ4Or/1XOg+ZbzMJqDuBmbH797m5WP/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654983959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cv5r/qvTPceVdEKw8TB994NoQOUYUstJKNYlbVEixeM=;
	b=iWH9+7vZv3TJ38SHHcZwpyC7MU1ddvO0HlEvgsw7xYFPa/d7oabGGWqYW6rsljVc
	oXjQyFsVWiSs2HXG5THz/vF35eHoHi5f7VwpTw664svGuRya8bVRmY6ihod+JcBi0rK
	yrcLrPRGvwQ3PxFZ3g9POEakq6ynXkFcOiEJa4HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018154bb22ed-0bf7eb42-4aca-4cf1-b9ca-6e465b327106-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be5285ce0cd994eaec679cf61c764d08b77b7922b423212d16e399a5c02f74a0
Date: Sat, 11 Jun 2022 21:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654983959
