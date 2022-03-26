Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0627E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 17:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648315738;
	h=To:Subject:From:Message-Id:Date;
	bh=B4wJFahSW37K3rtMWJrpFG9DfsCTEZiOK4b0BXDwl+I=;
	b=SWTHh+noP7ug/JhlUWexoIiFS4VZPHOgOBk/2vogbZbYuvdkXjgttMU9kHML9QQ5
	YVN6625wCJ8JTG+28wUhptBZ8TrMAgU8y3MsEd3kpnI3j911AauwCJwN8NxGaU8rwjb
	2NcJrgLfnpe4CdpbK737M2KXMowQpOmsHzJc8H5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648315738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B4wJFahSW37K3rtMWJrpFG9DfsCTEZiOK4b0BXDwl+I=;
	b=gLPkLxNqstbxsOIo0nOgRCgJ3+4BcsqkiomJdqPyKU5E6G25f8dXP2WlmaPDk/O1
	Ok7sKhxt5ea1kbbeFeZmvsayvLs5BNNR1WpQ44c4ssIO1MyyXOyaczAveS2jJ5JUksT
	ZJ3buB7TLyj5iHEio+yc8PiHb2L7jnX8hswHIaZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc74628d9-520f7bc6-f1d7-4d07-a466-c032bd69ad51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdad339895ebe5fe82696c27528f152427e589b87f1437ca98f59037fddcf621
Date: Sat, 26 Mar 2022 17:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648315738
