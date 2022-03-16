Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A807F23B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647409284;
	h=To:Subject:From:Message-Id:Date;
	bh=ow/d670cYh4W2VtiBfxJ6GY3f5q5aVaZ84uFVnHoAmw=;
	b=TZcAEWowiixvZ4Xb6L9qbaPkW/xdPgQhVlABO9jumw1A2pzqXnp3Rd1kUhA+lxPN
	tC6zWlrm0R5i7SmOKQZu3bsK+axB3DPPGX0LwwGkGRG+xn+IM8N4TrukAICkxi7qqZB
	YJfU0MV4j7MjSwNIVYzlbhclHK1Z9JTqWwDNQpAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647409284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ow/d670cYh4W2VtiBfxJ6GY3f5q5aVaZ84uFVnHoAmw=;
	b=cHy5DmNocQ8AC7onKry9WlWCUCOnEdWSITLbq/e99N/ZjUzzw2Pi3tAugCz8p+VR
	NRi+I2fXdRkBtQZkLP5aXL5CAoxmCQRR5qf2SJFTZD9b7rirgZN2IJ+VFWYDd3aYSsL
	BApOu9yeJf8YKS+bxgcNFXj4dX2QMh/65VI3KDuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f913ec66b-83cef040-391f-48f0-8370-16793d48ec47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 181a4a32a90ce3d1dd70f84f7eeedddb8abff461776776ef2a896c16d79c1d98
Date: Wed, 16 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647409284
