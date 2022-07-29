Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6497A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659075052;
	h=To:Subject:From:Message-Id:Date;
	bh=CKPeWKprPGwFHvBXHrU0UacyK5+anN60zd+5SkG2DHE=;
	b=kasjYhIdngN7sucB1Yh4t+1VPakNEHRx3ZbJy+3a2yBokjgsn1WjuMYEH/cSm9B/
	eExlzy1JY9R9rkvp7ID0AA5sdE4cd9T09PZ0Unb6mC17A6ejTRH9XHZIsyIEa7ope8L
	4PdZKFxre/zzCnyEIEARneBLzIBhhX6aTHaG1cYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659075052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CKPeWKprPGwFHvBXHrU0UacyK5+anN60zd+5SkG2DHE=;
	b=fCQ/oVE7YOyeyFSoVqSvpkO5jQf3/DvF7sk0LSr7AX03TzqA6DjRG+X+yIB4Uoxy
	FuytXgH6i/RKc4Gy45D6CHAjztDPRlozYnpUBfiuUYAoZCvQ97U9tOFzUMlcULdb0N9
	4yJscwr3A4A5jg7TLZZofOUTATNIIe2+iIOpXnaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248944410-d755fcd2-d1ed-418b-b807-0f93f888ba65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cb149f63b45ffd7cc73ddc1f8408b31fdb602ad662c7e8d6b316568fe7a314b
Date: Fri, 29 Jul 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659075052
