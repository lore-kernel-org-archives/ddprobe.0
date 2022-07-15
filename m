Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148764C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657913212;
	h=To:Subject:From:Message-Id:Date;
	bh=PW7pEfGM8xW/yDN4Cny1RvTf0un0VUgnxkj0DP6zY7Q=;
	b=kT6MCsgralyobPljpBopVWXD5fWRbRkHI8oL9e2xyhzjjG2FCKOVOGHgKTMBDAMs
	Rm/JYDJZ0J/RpP5Pu38BHtay78tzKYsJIxFkkJkwBAj0JzLkTFbQHo1cBQ27M8bMAcf
	qVEoefrE6Z8ASp8c/PXIKgzfus+QwSiPwYB6iOS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657913212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PW7pEfGM8xW/yDN4Cny1RvTf0un0VUgnxkj0DP6zY7Q=;
	b=I5bVVxXtGlowQXKZQ1nlg/v3YLQIqlltYvynSuSDwfU+f9Csc7vxxOrWaCXFo1Lk
	ldy0dZwAHDlNA2T9oiiBS+3u2WdA2qKu/5vlnEjewX8+YkkGKw0MpcauciaA/HWs1RD
	q48W+ja6uMLd2uZUoz0lWJyTGDhY4Gl3sYo8i928=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820353fdba-a2be3756-f07c-4db8-b0d0-7516d4357895-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a01c070ab7c46bdde9f682ede12342b27cda33c41f5dc91b3f63cc4b8d230860
Date: Fri, 15 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657913212
