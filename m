Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE016457
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647900084;
	h=To:Subject:From:Message-Id:Date;
	bh=fZrmbsPvYZ2Ra/0mWRku3jXUiOP0mr/ifguWxIBTmCQ=;
	b=UP3Onxi6F03V9YD6f7MG934LOMnFmC/X3INkyW4a36z30HdGTMTLUvRr4zQfT1hj
	G5hCzWVnoLNOdBb9DkMLpXzBNb2pHcCVbJesCDTo9uZg0HFw4IVwA8GdL20/j/5Q43T
	odd6vSNwX60xf6Ql+wXMqR7rFYQ0tDLKnuffYzp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647900084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fZrmbsPvYZ2Ra/0mWRku3jXUiOP0mr/ifguWxIBTmCQ=;
	b=Kls6sGbH5k0GhjMcUqPFV9Keb9qt7VadAiEFKavZy4E+jah3brnnJXWo/jhv/rln
	TgMm5BYuPVXUEc6OF+vmOTXqN1v+Frs9ho1le3Z5TvOZZrZ9w5zAXJTF7OI45wkX5iF
	j3x1RyhBEbAcNuOnDVofJNyy7FazaVEax5JvyB7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae7fca36-f530eb55-7098-42dc-91cb-657291a403e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4fbb7dcaa5d0aedd993d80e0686aeacc96657a329a848238accd0afdda133cd
Date: Mon, 21 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647900084
