Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ACE7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 02:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655086499;
	h=To:Subject:From:Message-Id:Date;
	bh=2KCE0wdpnQYOQ6RAQqw6c5n4KssZHFKauvqqdhoepUg=;
	b=D6vRN3l/oVlqeTsL7527ImIbbhUk7dxT0Ka/7d0gxa5L50hkymIUX/jTdf6ragu8
	VerZ0iDXfZ7ai0o6X4ULu42kQ/yFeP4940B3muA9A0cLze5IAood1P+jeCfVdBpj57T
	9wr+/5lW1MinCfT2TP9ngHgBf/kEoZyzzoIU/PdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655086499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KCE0wdpnQYOQ6RAQqw6c5n4KssZHFKauvqqdhoepUg=;
	b=WZ/g73hdkaij850FicLH+u1nulf7Yok8oStVFdhDh7l3QcEk+yWWnqR0eTetb8Jg
	91X+km4eUriapWge9WxT+HyElHnCaCIq8/1PWLF1L1Oc/5S/s9RYtgxaSDfcAPNuF73
	/dBPfqK5t9K3yvjteNUON7wccR8iqEa/PPgteVfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ad7c5ca-14a3f443-95b1-4dd8-ab7a-e8814998a081-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7fb83783977b0d7d7c5809db4d7826a60abd47dd5a15234cfedae34fff57bdb
Date: Mon, 13 Jun 2022 02:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655086499
