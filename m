Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C989A4292
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647517585;
	h=To:Subject:From:Message-Id:Date;
	bh=c9E7DE6cYKMaYquWL8RZqtRPesydW4I25Hu0kWU7Bec=;
	b=l8NGwozbuFOAyOGBx++sTVfPPuIHKI6w3M3Zu9by0SbjiJLRbi1NJmMY8N9W8bKI
	uYdSl9WV7YgAwwcGCp7cBgb4UI4KJ4wn+AcrO75+WcVpHsP9vKPVhc+AL1qxRbZVr1g
	AVtf0uvO+aPeIUp4wR1yEExXNBMOXHJbBRyMkwkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647517585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c9E7DE6cYKMaYquWL8RZqtRPesydW4I25Hu0kWU7Bec=;
	b=dl0ck/gTR7VjmCA8uJvORQHGzf8cusAgUb0F6RDyru2KsqK8K23mCJ0fWgZn+4eA
	TaVAxkZRAsZJRyDuQPGYPhauPpSpx7xwiqCfRwol65Nxq+IrBJnWuxkDXRmb6d4TvPT
	79rfPhKvfJ0lb/eytXIilX9R12mrbPQfXl5NQxuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97b34d3c-6cfcc6d8-1ef9-41c9-8267-8cdc63cad023-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94fd5d3c57f9a5ac02dde56bf0d1e7b08a17044c307db540b73ed833a0c2d021
Date: Thu, 17 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647517584
