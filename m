Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE41C13
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659717652;
	h=To:Subject:From:Message-Id:Date;
	bh=LdwaMbO3MB65gOstl0aDtjgyocj0huNaM75oJpT22BM=;
	b=dprK3u7FDE4KwigjB5DCELgcrjTtib8xOODKqjvJzEs3c60eJenKb79ByDqWwczl
	dLz+tQzqjrxxwPQtbLiP/powaPOK21qiO2ZSoG/C2Hw8hRoqHCj66zVtKp+F2lmKJVK
	V2F4R+HY3fs4kDxDXF+W7bbonV4HHIOJDVGcyYrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659717652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LdwaMbO3MB65gOstl0aDtjgyocj0huNaM75oJpT22BM=;
	b=idYc14JD27mc8M5OX2hVGGMKf7AEGVMKO5KTVrsFrglr9Jq0cJZHoP7pdqgrqY+2
	or5Om/jZPXl3+YQ6eHIOmk2czZvml2AbJ3J9Lxe/RUXq775BLbxndew2AKsbPs0rhDl
	/M3+2y4RE3oz9SDvuPHtDG9wCHJQI5+eBDRJ0o2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ee19038-b4f215e7-76f1-43d9-95ca-419c941690e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de2a5e1075eef96876eacb74d8f3d1fda17c18f43d6031590a3f639af6daf806
Date: Fri, 5 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659717652
