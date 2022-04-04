Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB772F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 13:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649078398;
	h=To:Subject:From:Message-Id:Date;
	bh=ayIz8eh2XWQq32uUOg5qiAqtP3BxJEfhHUtPegZ0GJ8=;
	b=LsXoqs6SL89h7j5QgjBTHSeYYdv5TP/edsTonkbagSsMasSckZvhKMry7/Zsj5aU
	d+tMzeriKlSmDBKmaZRqj/4GeTrCp5HOoOyijmRniUiIzL64mnDpUZO3OXAA002yIib
	HFnWBxAF7ExlbykSZFtQRXk/RXNXLViJi9LL5RGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649078398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ayIz8eh2XWQq32uUOg5qiAqtP3BxJEfhHUtPegZ0GJ8=;
	b=H10+JMRkWc2+5pJ0vPG/V2FSsqxqwlVHYrK0s9b9gPWVcteQYI57WLCneB78+rgz
	3lU26ecJKkdksSiv+MuGEg2ifbCnlrN/VEpVrNMOXpsUYGn8x0PjJh7X8UE+CGz82Ce
	0kSLTQqUH0ZAHTm0vdlsL5DJxkmG9pBRPofutheg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4bb6d21-11eb28ab-19fa-462e-b12a-b0dcb9d4e350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65d773ede0e42f856ba2519473c6fbc7ae33ae38f66468a06f104d5cdabbd546
Date: Mon, 4 Apr 2022 13:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649078398
