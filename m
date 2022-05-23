Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00D7368
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653295079;
	h=To:Subject:From:Message-Id:Date;
	bh=DgwLIoWjCM2HNKQ3XAoSUTPgIjcH6JbS09VWjOFBco4=;
	b=JFdix0pefAOAsh0wJIO68G2kShJkNJhh/WlfgKkv0TOF49Xwh0dd240vPVqg7//D
	81D2aVl+CYtapLZUCkLmz8mlzjSVTwaqJ0t4SUU7EGG89fVAiwn8Sdi2T/CrCsLhwBW
	s+hWdLuvlfmRvG9r9VnSWI7walmD/v8NcWOO7gRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653295079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgwLIoWjCM2HNKQ3XAoSUTPgIjcH6JbS09VWjOFBco4=;
	b=WbE4/8lWnYRltP4jGC4LW/8OXwo7Odil3r6zbE/nakCbJ3EwnnAcTM0KxQcmJFVz
	I+UrQq91q3ToY5v0bIOVExJmbrEp6pMakC+J0zIyhhed0b5U6ptZx+y+b2UOXu2P0Fk
	zaUBvjd54vcVXdJtFdg9T0xgsydi/QE3or2X02Wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f010df5f-5341125c-8409-4483-a168-49d854685934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e996058345066f80c796b762e70854df04657f14843c48edc340e9e76044f586
Date: Mon, 23 May 2022 08:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653295079
