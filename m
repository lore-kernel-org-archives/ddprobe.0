Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783C36C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 08:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648628518;
	h=To:Subject:From:Message-Id:Date;
	bh=q5HDMpBuRM0ZBsujHgQgC1cy1Ue1B57NzNiNyWuibw4=;
	b=LJIzfiGcldbTtV5FQoFCw1zyYO31EVgzbMdx3GFvzDDBLk2/SwVF5jSJjZ1KQk7D
	KXNy3O8tALV6CdXpfU3aZA+sebfENdM5fWth3teU3I6JDWb15nJkmipEVCmVQDfBn6j
	+UepxT757XrS8KC3TLLvftARQFUn9IGsXN56QDoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648628518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q5HDMpBuRM0ZBsujHgQgC1cy1Ue1B57NzNiNyWuibw4=;
	b=g68fbkW0yj6GvioEDmYfatnO8Hcs3ERwvxq+IalYvUxqpyAOBivT3Qp5zoMHeFs3
	iqqLMVY2PFO019ANpmSG1+h/TL8ScpA6Ep+5RoAA/eytxJWhEa9cTRKQfZkQzow9keS
	6H4xQ6uquwViwlGclvXZ9yw2gq63InvOx5Jk7xF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd9eacd68-5e75e93f-7680-4c54-8f02-c2aeaa13955d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b600116393eefaade93b73554d72c0b4a9b07d7be0e01d90815a646a602fa4a
Date: Wed, 30 Mar 2022 08:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648628518
