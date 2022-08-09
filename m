Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1557A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660021252;
	h=To:Subject:From:Message-Id:Date;
	bh=NcaX7vbxHrqTmraL/9JTGUxpQ43N7lxfMwxn4MjCQqo=;
	b=Oeo4O8v6VZmyuFwbQCUI1ZJtaMOy8Y90SAjTenj4ufUghN6OXC/UT2ZB8wl4iSqb
	N1uzL1/T+n9ZxoEQvNgsN8/0EZpT/JZXxfLZkqTnQQW/0WzwTiaHwPpldgOIE8duJei
	qQ+WIHN/vOJrRd3vmLrMFM4tzxtRIprg829rVFyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660021252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NcaX7vbxHrqTmraL/9JTGUxpQ43N7lxfMwxn4MjCQqo=;
	b=XKU14vWxBdLAeO3jP5nYP8dc96TprLB7KkhssDRPKfEwhCwk0DlZgzGYaAaDd1yQ
	lo1bbMbVrpBSx44IL4F43D+cPVse5E/T8R+KsUlojo6349odzLwd8tr86fHI+pJT+YE
	ENZ6743uHcLG2Mt6NhUe6mEzyKddyHXcJUg/wn6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280fa21c0-f9210e1d-3d6c-4c42-8060-382880abb280-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e97eb23eb746a8f215c79e9875c32250bccddacb63a403b460f23c58cf46e8d5
Date: Tue, 9 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660021252
