Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EF17E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 07:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654500479;
	h=To:Subject:From:Message-Id:Date;
	bh=6dl+Y4ol8PU6NcOkZ7Mx2YPny2zSyzy/jnmJdxwxgp8=;
	b=BI7sb8l/Ax3PT0f5oof7m59bxr38VeR+92fnVCDbctnPygnGscUtGEEtDhT+FZiF
	nP54BqvChfQ+uLctvc22Ygx5adBervqRwbqHVKw0dMyG7cObstRUT5GoRbwu1qntYom
	QJeNacLCeT/vGq5t8NUsXZexI6oVWOiIfbQ0noHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654500479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6dl+Y4ol8PU6NcOkZ7Mx2YPny2zSyzy/jnmJdxwxgp8=;
	b=hfxk91vNKkV5g6fknD7aowvplK7GmmOYmG3DAKTk/rAOGZKERFNUF/tUCEDagADi
	1myO2S6TqXJkcNuP0PcR9+1zh7vYICq1sN5JDXZLYf6dVUcEH5CDOy/vrcSZedDAn57
	+aFM4dYjBmo/8nSa+3fgXp+9B03oY/2e4kiZit60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137e9d14f-be34ae7a-bcdb-4056-b53e-5bbb7b45bb6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fba94557edfa1e2aeeea7691a3c03f70e943a530d90242dfaf381e33d8908ad
Date: Mon, 6 Jun 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654500479
