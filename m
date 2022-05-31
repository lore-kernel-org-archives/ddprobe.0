Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAEA210B
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 10:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653992699;
	h=To:Subject:From:Message-Id:Date;
	bh=4aWig7azOwLoK7acv4syDzoOSiHk1WimV+6yQvxLa/U=;
	b=lFKuI4s59r3s0/X7f9W82qaV6gBr838m0nvcTpK0n61p0Ew7oIbCmLMFmTEaFfeV
	t3ztXv+47jfUFm7YcoalBf9El2eyHtruwKdbtmvzL1J7oX2irWDhXLnOkbEgcJx0E/a
	SGCwRzeV2xXd4bx+XPRQNlNucewA0j06ogh4YQJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653992699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aWig7azOwLoK7acv4syDzoOSiHk1WimV+6yQvxLa/U=;
	b=GKKr5WvEoR1iWgrERgqgWKDS5lV+YGGnzMOPD7mTTRXOO8N85fnkiTKC7IwYsJLw
	noc+xskYSil11sTidAtN14MYTOpAfLX6hIu+ejsrVAhhlztAMiEL2Q9UBfLHJqSVz+h
	brrMs9KodBhLTZS5NXczSA4yswRoUHuqMGbS5mPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119a5b570-58d1a944-fc19-456e-8a89-9358b784233a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e65548df29e6023504654234770d03c71991f9655a25a736024cac2ca2e2a885
Date: Tue, 31 May 2022 10:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653992699
