Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6A817E8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 07:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653894359;
	h=To:Subject:From:Message-Id:Date;
	bh=+ZN5fCKj4kfn9CRYYoVNisqFEqeG6uXTcImmLnQFQgU=;
	b=Dk7Z1MiqZ7q0dxbaSoRDuDvNup2HjYoq+VT5aEE51+dLFdhRvtYWznxvLAH75PlM
	65tfmbP0FBCvKqyAw074PjvyBjNoYK0tp9boaziQFX/tGDByNxl2/WYaLX6igaLYBP4
	MsVAqNikGDD9suh7M6Qqr9Kz7zmD7O/moTfAf0kE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653894359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ZN5fCKj4kfn9CRYYoVNisqFEqeG6uXTcImmLnQFQgU=;
	b=VegiudlIWw4uuRJJFTb19ZoJEK7F0OX6RrAdDmEXCrOdK2epA6pE5Bz6V6zeMhxN
	jeGVaNYfFqY/jgSZ2N7a0d1Z78XOZs8JJA9M4OVyiRoX9kLZDU44oykOvxITsJ0SWkK
	1WYxAFBgy4vRYTfGlVogU9e/0sM0f5BQqKXQ8UQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018113c928de-ec43bffd-03b0-4d31-8f34-2db5f67d9539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: debdc8b1da786c6b08369ce92683b167631e792d7b28ed254f34d47f7554003a
Date: Mon, 30 May 2022 07:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653894359
